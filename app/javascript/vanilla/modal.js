const initModal = () => {
  const modalToggler = document.querySelectorAll('.book-button');
  const modal = document.querySelector('.modal-formatter')
  modalToggler.forEach(toggle => toggle.addEventListener('click', () => {
    modal.classList.toggle('active');
  })
  );
};

export { initModal };
